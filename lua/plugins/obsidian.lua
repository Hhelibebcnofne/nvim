return {
	"https://github.com/obsidian-nvim/obsidian.nvim",
	version = "*",
	---@module 'obsidian'
	---@type obsidian.config
	keys = {
		-- 閲覧 / 検索
		{
			"<leader>oo",
			"<cmd>Obsidian quick_switch<cr>",
			desc = "Obsidian クイックスイッチ（ノート切替）",
		},
		{ "<leader>os", "<cmd>Obsidian search<cr>", desc = "Obsidian 全文検索" },
		{ "<leader>ok", "<cmd>Obsidian tags<cr>", desc = "Obsidian タグで検索" },
		{ "<leader>ob", "<cmd>Obsidian backlinks<cr>", desc = "Obsidian バックリンク" },
		{ "<leader>ol", "<cmd>Obsidian links<cr>", desc = "Obsidian 現在のノートのリンク" },
		{ "<leader>oc", "<cmd>Obsidian toc<cr>", desc = "Obsidian 目次（アウトライン）" },
		{ "<leader>ow", "<cmd>Obsidian workspace<cr>", desc = "Obsidian Vault切り替え" },

		-- 新規作成
		{ "<leader>on", "<cmd>Obsidian new<cr>", desc = "Obsidian 新規ノート作成" },
		{ "<leader>oz", "<cmd>Obsidian unique_note<cr>", desc = "Obsidian タイムスタンプ付きノート作成" },
		{ "<leader>oF", "<cmd>Obsidian template<cr>", desc = "Obsidian テンプレート挿入" },

		-- 日記
		{ "<leader>ot", "<cmd>Obsidian today<cr>", desc = "Obsidian 今日の日記" },
		{ "<leader>oy", "<cmd>Obsidian yesterday<cr>", desc = "Obsidian 昨日の日記" },
		{ "<leader>oT", "<cmd>Obsidian tomorrow<cr>", desc = "Obsidian 明日の日記" },
		{ "<leader>od", "<cmd>Obsidian dailies<cr>", desc = "Obsidian 日記一覧" },

		-- 編集
		{ "<leader>ox", "<cmd>Obsidian toggle_checkbox<cr>", desc = "Obsidian チェックボックス切り替え" },
		{
			"<leader>or",
			"<cmd>Obsidian rename<cr>",
			desc = "Obsidian ノート名変更（バックリンクも同期更新）",
		},
		{ "<leader>op", "<cmd>Obsidian paste_img<cr>", desc = "Obsidian クリップボード画像を貼り付け" },

		-- 選択範囲操作
		{
			"<leader>oL",
			"<cmd>Obsidian link<cr>",
			mode = "x",
			desc = "Obsidian 選択範囲を既存ノートにリンク",
		},
		{
			"<leader>oN",
			"<cmd>Obsidian link_new<cr>",
			mode = "x",
			desc = "Obsidian 選択範囲から新規ノートを作成してリンク",
		},
		{
			"<leader>oe",
			"<cmd>Obsidian extract_note<cr>",
			mode = "x",
			desc = "Obsidian 選択範囲を新規ノートとして抽出",
		},
	},
	opts = {
		legacy_commands = false, -- this will be removed in 4.0.0
		workspaces = {
			{
				name = "personal",
				path = "~/vaults/personal",
				overrides = {
					-- プロジェクトルート配下のnotesディレクトリ内に作成する
					notes_subdir = "notes",
				},
			},
		},
		daily_notes = {
			folder = "daily",
			template = "~/vaults/personal/daily/template.md",
		},
		note_id_func = function(title)
			if title ~= nil then
				return title:gsub('[\\/:%*%?"<>|]', "")
			else
				return tostring(os.time())
			end
		end,
		new_notes_location = "notes_subdir",
	},
}
