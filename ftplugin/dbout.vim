nnoremap <silent><buffer> <Plug>(DBUI_JumpToForeignKey) :call db_ui#dbout#jump_to_foreign_table()<CR>
nnoremap <silent><buffer> <Plug>(DBUI_YankCellValue) :call db_ui#dbout#get_cell_value()<CR>
nnoremap <silent><buffer> <Plug>(DBUI_YankHeader) :call db_ui#dbout#yank_header()<CR>
nnoremap <silent><buffer> <Plug>(DBUI_ToggleResultLayout) :call db_ui#dbout#toggle_layout()<CR>
omap <silent><buffer> ic :call db_ui#dbout#get_cell_value()<CR>
nnoremap <silent><buffer> <Plug>(DBUI_UpdateParamTable) :call db_ui#dbout#update_param_table()<CR>
nnoremap <silent><buffer> <Plug>(DBUI_DeleteRowTable) :call db_ui#dbout#delete_row_table()<CR>

if get(g:, 'db_ui_disable_mappings', 0)
  finish
endif

call db_ui#utils#set_mapping('<C-]>', '<Plug>(DBUI_JumpToForeignKey)')
call db_ui#utils#set_mapping('vic', '<Plug>(DBUI_YankCellValue)')
call db_ui#utils#set_mapping('yh', '<Plug>(DBUI_YankHeader)')
call db_ui#utils#set_mapping('<Leader>R', '<Plug>(DBUI_ToggleResultLayout)')
call db_ui#utils#set_mapping('<C-[>', '<Plug>(DBUI_UpdateParamTable)')
call db_ui#utils#set_mapping('<C-e>', '<Plug>(DBUI_DeleteRowTable)')
