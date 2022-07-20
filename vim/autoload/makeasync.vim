if !has('vim9script')
    finish
endif

vim9script

var makeJob: job
var compilationBuffer = 'compilation'

def GetRunningOS(): string
  if has("win32")
    return "win"
  endif
  if has("unix")
    if system('uname') =~ 'Darwin'
      return "mac"
    else
      return "linux"
    endif
  endif

  return ''
enddef

var os = GetRunningOS()

def MakeAsyncHandler(job: job, status: number)
    var currentWindowId = win_getid()
    execute 'vs ' .. compilationBuffer
    execute 'cgetb ' .. bufnr(compilationBuffer)
    execute 'cw'
    win_gotoid(currentWindowId)
    echom 'compilation completed and quickfix list populated'
enddef

export def Make(): bool

    if (bufexists(compilationBuffer))
        execute 'bd ' .. compilationBuffer
    endif

    var command = ''

    if (os == 'mac' || os == 'linux')
        command = &makeprg
    endif

    if (os == 'win')
        command = 'cmd /C ' .. &makeprg
    endif

    echom 'running ' .. command
    makeJob = job_start(command, { 'exit_cb': 'MakeAsyncHandler', 'out_io': 'buffer', 'err_io': 'buffer', 'err_name': compilationBuffer, 'out_name': compilationBuffer })
    return true
enddef

export def Status()
    echom job_status(makeJob)
    echom job_info(makeJob)
enddef
