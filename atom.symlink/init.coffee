path = require 'path'

atom.workspace.observeTextEditors (editor) ->
  if path.extname(editor.getPath()) is '.md'
    TextEditor::setSoftWrap(true)
