#!/bin/sh

############################################################
usage()
{
    echo "Usage: $ScriptName -h"
    echo "Make tar and zip files with all deliverables"
    exit 1
}

############################################################
ScriptName="$0"

if test "X$1" = "X-h"
then
    usage
fi

TarFile="stamp_deliverables.tgz"
ZipFile="stamp_deliverables.zip"
tar czvf $TarFile d* CommitStrip_STAMP_*
zip $ZipFile d* CommitStrip_STAMP_*
