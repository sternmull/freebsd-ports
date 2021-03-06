--- ext/nokogiri/extconf.rb.orig	2015-03-30 01:22:50.766379000 +0000
+++ ext/nokogiri/extconf.rb	2015-03-30 01:23:08.727234000 +0000
@@ -7,8 +7,8 @@
 RbConfig::MAKEFILE_CONFIG['CC'] = ENV['CC'] if ENV['CC']
 
 ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
-LIBDIR = Config::CONFIG['libdir']
-INCLUDEDIR = Config::CONFIG['includedir']
+LIBDIR = RbConfig::CONFIG['libdir']
+INCLUDEDIR = RbConfig::CONFIG['includedir']
 
 if defined?(RUBY_ENGINE) && RUBY_ENGINE == 'macruby'
   $LIBRUBYARG_STATIC.gsub!(/-static/, '')
@@ -17,9 +17,9 @@
 $CFLAGS << " #{ENV["CFLAGS"]}"
 $LIBS << " #{ENV["LIBS"]}"
 
-if Config::CONFIG['target_os'] == 'mingw32' || Config::CONFIG['target_os'] =~ /mswin32/
+if RbConfig::CONFIG['target_os'] == 'mingw32' || RbConfig::CONFIG['target_os'] =~ /mswin32/
   $CFLAGS << " -DXP_WIN -DXP_WIN32 -DUSE_INCLUDED_VASPRINTF"
-elsif Config::CONFIG['target_os'] =~ /solaris/
+elsif RbConfig::CONFIG['target_os'] =~ /solaris/
   $CFLAGS << " -DUSE_INCLUDED_VASPRINTF"
 else
   $CFLAGS << " -g -DXP_UNIX"
@@ -33,7 +33,7 @@
   $CFLAGS << " -O3 -Wall -Wcast-qual -Wwrite-strings -Wconversion -Wmissing-noreturn -Winline"
 end
 
-if Config::CONFIG['target_os'] =~ /mswin32/
+if RbConfig::CONFIG['target_os'] =~ /mswin32/
   lib_prefix = 'lib'
 
   # There's no default include/lib dir on Windows. Let's just add the Ruby ones
