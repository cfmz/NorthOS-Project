#!/bin/bash
# Примерно так работает ребрендинг в DivestOS
echo "Rebranding to NorthOS..."
# Заменяем строки в интерфейсе
sed -i 's|LineageOS|NorthOS|g' build/make/tools/buildinfo.sh
# Переименовываем префикс zip-архива
sed -i 's|lineage|north|g' build/make/core/Makefile
# Заменяем в настройках
sed -i 's|LineageOS|NorthOS|g' packages/apps/Settings/res/values/strings.xml
echo "Done!"
