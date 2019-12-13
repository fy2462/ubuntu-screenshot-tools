TARGET_DIR="/usr/local/deepin-scrot"
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Current Path is ${DIR}"
sudo cp -R "${DIR}" $TARGET_DIR
cd "${TARGET_DIR}"
sudo ./scripts/updateTranslate.sh
echo "Config Done"
set +e
sudo rm -f /usr/bin/deepinScrot
cd /usr/bin
sudo ln -s /usr/local/deepin-scrot/src/deepinScrot.py deepinScrot
set -e
deepinScrot

