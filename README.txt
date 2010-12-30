$Id: 

CKEdit profile 1.x for Drupal 7
---------------------------------
Install Drupal with WYSIWYG features pre-configured.

CKEdit is a Drupal distribution with preconfigured WYSIWYG features
based on CKEditor, wysiwyg and IMCE modules


CKEdit helps drupal users

- to start with a ready-to-use WYSIWYG (stands for What You See Is What You Get) editor
- allows to format posts just right, without having to deal with html code itself


Requirements
------------
In addition to the standard Drupal requirements you will need the following to
make use of CKEdit:

- drush 3.1 - http://drupal.org/project/drush
- drush make 2.0 beta 9 - http://drupal.org/project/drush_make
- git - http://git-scm.com


Getting started
---------------
CKEdit provides a `distro.make` file for building a full Drupal distro including Druapl core,
as well as a copy of the `ckedit` install profile.

1. Grab the `distro.make` file from CKEdit and run:

        $ drush make distro.make [directory]

   or use its url on Drupal.org directly:

        $ drush make http://github.com/doka/ckedit.git [directory]

2. Choose the "CKEdit" install profile when installing Drupal


Functionality
-------------
CKEdit distro extends the standard profile of Drupal 7:
1. via distro.make and drupal-org.make files:
- wysiwyg, icme and icme_wysiwyg modules (/profiles/ckedit/modules/)
- CKEditor library (/sites/all/libraries/ckeditor)

2. via ckedit.install (where feature is not yet working)
- adds a new text format (/admin/config/content/formats) called CKEditor
- creates a new role and permissions for wysiwyg features (/admin/people/permissions)
- configures the CKEditor buttons and other feature (/config/content/wysiwyg)
  (in wysiwyg table in the database)
- clean up some default variables, see: http://drupal.org/node/840080#comment-3145536

3. via features (where feature can be used, and resulting in ckedit-features.module)
- configures the IMCE file browser (/admin/config/media/imce):
    - add an IMCE configuration profile (ckedit)
	- assign this profile to ckedit role


Extending CKEdit
----------------

 !!!! TBD !!!!!!
 
Site builders can use Build Kit as a starting point for their own install
profiles. Basic steps for creating a new install profile called `myprofile` that
extends Build Kit:

1. Create the following directory and files:

        profiles/myprofile
        profiles/myprofile/distro.make
        profiles/myprofile/myprofile.info
        profiles/myprofile/myprofile.make
        profiles/myprofile/myprofile.install

2. Enter an include statement into `distro.make` to include the contents of the
  Build Kit distro makefile and then add your new install profile to it:

        ; Include Build Kit distro makefile via URL
        includes[] = http://drupalcode.org/viewvc/drupal/contributions/profiles/buildkit/distro.make?view=co&pathrev=DRUPAL-7--2

        ; Add myprofile to the full Drupal distro build
        projects[myprofile][type] = profile
        projects[myprofile][download][type] = git
        projects[myprofile][download][url] = git://github.com/myname/myprofile.git

2. Enter an include statement into `myprofile.make` to include the contents of
  the Build Kit install profile makefile and then add any additional projects
  or overrides:

        ; Include Build Kit install profile makefile via URL
        includes[] = http://drupalcode.org/viewvc/drupal/contributions/profiles/buildkit/drupal-org.make?view=co&pathrev=DRUPAL-7--2

        projects[feeds][version] = 2.0-alpha1
        projects[job_scheduler][version] = 2.0-alpha1
        ...

  For more information about using makefiles see the [drush make README][1].

3. Copy the contents of `buildkit.info` into `myprofile.info` and then adjust
  its contents to reflect the metadata, modules and theme you want to enable.
  For example:

        name = My First Drupal Distro
        core = 6.x
        description = Hello world!

        dependencies[] = feeds
        ...

4. Implement `hook_install()` in `myprofile.install` to do any other setup
  tasks for your install profile:

        <?php

        function myprofile_install() {
          theme_enable(array('stark'));
          variable_set('theme_default', 'stark');
        }

5. Build a full distro using the following command from `profiles/myprofile`:

        $ drush make distro.make [directory]

6. Choose "My First Drupal Distro" when installing Drupal!


Maintainers
-----------
- doka@wepaca.net

Credits
-------
Build Kit


[1]: http://drupalcode.org/viewvc/drupal/contributions/modules/drush_make/README.txt?view=co&pathrev=DRUPAL-6--2
[2]: http://drupalcode.org/viewvc/drupal/contributions/modules/profiler/README.txt?view=co&pathrev=MAIN
