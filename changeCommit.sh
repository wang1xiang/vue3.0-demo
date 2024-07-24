git filter-branch --commit-filter '
  if [ "$GIT_AUTHOR_EMAIL" = "756638369@qq.com" ];
  then
          GIT_AUTHOR_NAME="wangxiang";
          GIT_AUTHOR_EMAIL="wangxiang@qimingpian.com";
          git commit-tree "$@";
  else
          git commit-tree "$@";
  fi' HEAD