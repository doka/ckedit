; profile.make
; install ckedit profile without drupal core and 3rd party libraries
; ------------------------------------------------------------------
; useage: 
; $ drush make --no-core https://github.com/doka/ckedit/raw/master/profile.make profiles/ckedit

; compatibility
; -------------
api = 2
core = 7.x

; ckedit profile via drupal-org.make
; ----------------------------------
projects[ckedit][type] = profile
projects[ckedit][download][type] = git
projects[ckedit][download][url] = "git://github.com/doka/ckedit.git"
projects[ckedit][download][branch] = "master"
