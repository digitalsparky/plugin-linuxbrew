set -g __linuxbrew_dir /home/linuxbrew/.linuxbrew

if test -d $__linuxbrew_dir
  if not contains -- $__linuxbrew_dir/bin $PATH
    set PATH $__linuxbrew_dir/bin $PATH
  end
  if not contains -- $__linuxbrew_dir/sbin $PATH
    set PATH $__linuxbrew_dir/sbin $PATH
  end
  if not contains -- $__linuxbrew_dir/share/man $MANPATH
    set MANPATH $__linuxbrew_dir/share/man $MANPATH
  end
  if not contains -- $__linuxbrew_dir/share/info $INFOPATH
    set INFOPATH $__linuxbrew_dir/share/info $INFOPATH
  end
end

set -e __linuxbrew_dir
