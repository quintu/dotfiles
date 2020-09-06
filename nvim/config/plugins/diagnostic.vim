let g:diagnostic_insert_delay = 1
let g:diagnostic_show_sign = 1
let g:disgnostic_enable_virtual_text = 0
let g:space_before_virtual_text = 5
let g:diagnostic_enable_underline = 1
call sign_define("LspDiagnosticsErrorSign", {"text" : "", "texthl" : "LspDiagnosticsError"})
call sign_define("LspDiagnosticsWarningSign", {"text" : "", "texthl" : "LspDiagnosticsWarning"})
call sign_define("LspDiagnosticsInformationSign", {"text" : "🛈", "texthl" : "LspDiagnosticsInformation"})
call sign_define("LspDiagnosticsHintSign", {"text" : "❗", "texthl" : "LspDiagnosticsHint"})
"nnoremap <silent> 
