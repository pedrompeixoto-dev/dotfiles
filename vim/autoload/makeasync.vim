if !has('vim9script')
    finish
endif

vim9script

var makeJob: job
var compilationBuffer = 'compilation'

def MakeAsyncHandler(job: job, status: number) 
    execute 'vs ' .. compilationBuffer
    execute 'wincmd p'
    execute 'cgetb ' .. bufnr(compilationBuffer)
    echom 'compilation completed and quickfix list populated' 
enddef

export def Make()

    if (bufexists(compilationBuffer)) 
        execute 'bd ' .. compilationBuffer
    endif

    var command = 'cmd /C ' .. &makeprg
    echom 'running ' .. command
    makeJob = job_start(command, { 'exit_cb': 'MakeAsyncHandler', 'out_io': 'buffer', 'out_name': compilationBuffer })
enddef

export def Status()
    echom job_status(makeJob)
    echom job_info(makeJob)
enddef
