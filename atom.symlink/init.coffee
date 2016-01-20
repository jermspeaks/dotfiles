# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"
# childProcess = require('child_process')
# process.env.PATH = childProcess.execFileSync(process.env.SHELL, ['-i', '-c', 'echo $PATH']).toString().trim()
