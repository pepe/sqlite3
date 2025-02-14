(declare-project
  :name "sqlite3"
  :author "Calvin Rose"
  :license "MIT"
  :url "https://github.com/janet-lang/sqlite3"
  :repo "git+https://github.com/janet-lang/sqlite3.git")

(declare-native
    :name "sqlite3"
    :cflags (unless (= :windows (os/which)) ["-pthread"])
    :source @["sqlite3.c" "main.c"])
