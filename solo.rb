root = File.absolute_path(File.dirname(__FILE__))

log_level :debug

file_cache_path root
cookbook_path root + '/cookbooks'
