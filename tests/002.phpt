--TEST--
test1() Basic test
--SKIPIF--
<?php
if (!extension_loaded('ext_skeleton_name')) {
    echo 'skip';
}
?>
--FILE--
<?php
$ret = test1();

var_dump($ret);
?>
--EXPECT--
The extension ext_skeleton_name is loaded and working!
NULL
