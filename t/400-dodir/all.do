redo test-in-dodir
[ "$(cat test-in-dodir)" == "I am source" ] || exit 2
redo default-in-dodir.test
[ "$(cat default-in-dodir.test)" == "pass" ] || exit 3
redo subdir/subdir.test
[ "$(cat subdir/subdir.test)" == "pass" ] || exit 4
redo subdir/subdir.t.x
[ "$(cat subdir/subdir.t.x)" == "passed" ] || exit 5
redo subdir/xrule.x
[ "$(cat subdir/xrule.x)" == "I am xrule.sweet" ] || exit 6
