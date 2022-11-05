:set syntax=off " disable traditional syntax highlighting
:set runtimepath^=. " prepend test query to rtp
:lua print(vim.inspect(vim.treesitter.query.get_query_files("c", "highlights"))) -- validate that custom query is overriding builtins
:lua vim.treesitter.start() -- enable treesitter syntax highlighting
