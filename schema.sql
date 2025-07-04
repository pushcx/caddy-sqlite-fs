CREATE TABLE IF NOT EXISTS "files" (
	"name" TEXT PRIMARY KEY, -- full file path compliant with: https://pkg.go.dev/io/fs#ValidPath
	"content" BLOB,          -- file bytes
	"modified" INTEGER,      -- unix timestamp of last modification
	"mode" INTEGER,          -- file mode
	"expired_at" INTEGER     -- unix timestamp when file expires (NULL means never)
) WITHOUT ROWID;
