import config, VC from lunar
import File from lunar.fs

class Git
  new: (root, git_dir) =>
    @root = root
    @git_dir = git_dir

  files: =>
    exec_path = config.git_path or 'git'
    cmd = table.concat {
      exec_path,
      "--git-dir='" .. @git_dir .. "'",
      "--work-tree='" .. @root .. "'",
      "ls-files",
      "--exclude-standard",
      "--others"
      "--cached"
      "--directory"
    }, ' '
    pipe = assert io.popen cmd
    chunk = assert pipe\read '*a'
    pipe\close!
    git_files = {}
    for path in chunk\gmatch '[^\n]+'
      append git_files, @root\join path
    git_files

find = (file) ->
  while file != nil
    git_dir = file\join('.git')
    if git_dir.exists
      return Git file, git_dir
    file = file.parent

VC.register 'git', :find
config.define name: 'git_path', description: 'Path to git executable'

info = {
  name: 'Git',
  author: 'Copyright 2012 Nils Nordman <nino at nordman.org>',
  description: 'Git bundle',
  license: 'MIT',
}

return :info