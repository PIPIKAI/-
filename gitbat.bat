:: 输入提交内容
set /p commit_msg=Please input commit message:
:: 添加
git add .
:: 提交
git commit -m "%commit_msg%"
:: 推送到主分支
git push origin 
:: 推送到gitee
git push gitee
:: 停顿 
pause