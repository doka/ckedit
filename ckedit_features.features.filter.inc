<?php
/**
 * @file
 * ckedit_features.features.filter.inc
 */

/**
 * Implementation of hook_filter_default_formats().
 */
function ckedit_features_filter_default_formats() {
  $formats = array();

  // Exported format: wysiwyg
  $formats['wysiwyg'] = array(
    'format' => 'wysiwyg',
    'name' => 'wysiwyg',
    'cache' => '1',
    'status' => '1',
    'weight' => '0',
    'filters' => array(),
  );

  return $formats;
}
