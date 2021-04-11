--TEST--
Check if ext_skeleton_name is loaded
--SKIPIF--
<?php
if (!extension_loaded('ext_skeleton_name')) {
    echo 'skip';
}
?>
--FILE--
<?php
echo 'The extension "ext_skeleton_name" is available';
?>
--EXPECT--
The extension "ext_skeleton_name" is available
