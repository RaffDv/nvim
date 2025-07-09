-- ~/.config/nvim/lua/plugins/taskwarrior-integration.lua

return {
  {
    "LazyVim/LazyVim",
    keys = {
      {
        "<leader>ta", -- "ta" de "task add"
        function()
          -- 1. PERGUNTA PRIMEIRO: Usa a UI do NeoVim para pedir o nome do projeto
          local project_name = vim.fn.input("Nome do Projeto (Enter para nenhum): ")

          -- 2. PEGA AS INFORMAÇÕES DO CÓDIGO:
          local line_content = vim.api.nvim_get_current_line()
          local file_path = vim.fn.expand("%:p")
          local line_number = vim.api.nvim_win_get_cursor(0)[1]

          -- Define o caminho para o seu script
          local script_path = vim.fn.expand("~/.config/taskwarrior/scripts/task-from-vim.sh")

          -- 3. CHAMA O SCRIPT: Monta o comando com 4 argumentos, incluindo o nome do projeto
          local command =
            string.format("bash %s '%s' '%s' %d '%s'", script_path, line_content, file_path, line_number, project_name)
          local output = vim.fn.system(command)

          -- Mostra a confirmação do script no NeoVim
          vim.notify(output, vim.log.levels.INFO, { title = "Taskwarrior" })
        end,
        desc = "Add Task from current line",
      },
    },
  },
}
