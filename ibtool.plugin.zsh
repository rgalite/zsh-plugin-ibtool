ibtool-gen() {
  if (($# < 2))
  then
    echo "Usage: ibtool-generate base-language class-name"
    return 1
  else
    echo ibtool --generate-strings-file en.lproj/$1.strings en.lproj/$1.xib
    ibtool --generate-strings-file en.lproj/$1.strings en.lproj/$1.xib
  fi
}

ibtool-write() {
  if (($# < 3))
  then
    echo "Usage: ibtool-write base-language target-language class-name"
    return 1
  else
    echo ibtool --strings-file $2.lproj/$3.strings --write $2.lproj/$3.xib $1.lproj/$3.xib
    ibtool --strings-file $2.lproj/$3.strings --write $2.lproj/$3.xib $1.lproj/$3.xib
  fi
}
