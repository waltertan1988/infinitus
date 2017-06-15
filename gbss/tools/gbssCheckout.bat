
@echo off

set branchName=%1%

if "%branchName%"=="" (
echo usage: gbssCheckout [branchName]
goto end
)

set projectHome=%cd%

@echo on



:: 处理base仓库
@cd %projectHome%/gbss-base
git checkout %branchName%



:: 处理gbss（中后台）仓库
@cd %projectHome%/gbss/gbss
git checkout %branchName%
@cd %projectHome%/gbss/gbss-acts
git checkout %branchName%
@cd %projectHome%/gbss/gbss-batch
git checkout %branchName%
@cd %projectHome%/gbss/gbss-cs
git checkout %branchName%
@cd %projectHome%/gbss/gbss-data
git checkout %branchName%
@cd %projectHome%/gbss/gbss-dealer
git checkout %branchName%
@cd %projectHome%/gbss/gbss-eadmin
git checkout %branchName%
@cd %projectHome%/gbss/gbss-operation
git checkout %branchName%
@cd %projectHome%/gbss/gbss-otms
git checkout %branchName%
@cd %projectHome%/gbss/gbss-pay
git checkout %branchName%
@cd %projectHome%/gbss/gbss-po
git checkout %branchName%
@cd %projectHome%/gbss/gbss-promotion
git checkout %branchName%
@cd %projectHome%/gbss/gbss-so
git checkout %branchName%
@cd %projectHome%/gbss/gbss-sys
git checkout %branchName%



:: 处理api仓库
@cd %projectHome%/gbss-api/gbss-acts-api
git checkout %branchName%
@cd %projectHome%/gbss-api/gbss-api
git checkout %branchName%
@cd %projectHome%/gbss-api/gbss-cs-api
git checkout %branchName%
@cd %projectHome%/gbss-api/gbss-data-api
git checkout %branchName%
@cd %projectHome%/gbss-api/gbss-dealer-api
git checkout %branchName%
@cd %projectHome%/gbss-api/gbss-operation-api
git checkout %branchName%
@cd %projectHome%/gbss-api/gbss-otms-api
git checkout %branchName%
@cd %projectHome%/gbss-api/gbss-pay-api
git checkout %branchName%
@cd %projectHome%/gbss-api/gbss-po-api
git checkout %branchName%
@cd %projectHome%/gbss-api/gbss-promotion-api
git checkout %branchName%
@cd %projectHome%/gbss-api/gbss-so-api
git checkout %branchName%
@cd %projectHome%/gbss-api/gbss-sys-api
git checkout %branchName%



:: 处理html仓库
@cd %projectHome%/gbss-html/mdealer-html
git checkout %branchName%
@cd %projectHome%/gbss-html/mpay-html
git checkout %branchName%
@cd %projectHome%/gbss-html/mpay-lib
git checkout %branchName%
@cd %projectHome%/gbss-html/mpos-html
git checkout %branchName%
@cd %projectHome%/gbss-html/mstore-html
git checkout %branchName%



:: 处理web仓库
@cd %projectHome%/gbss-web/gbss-eacts
git checkout %branchName%
@cd %projectHome%/gbss-web/gbss-edealer
git checkout %branchName%
@cd %projectHome%/gbss-web/gbss-epay
git checkout %branchName%
@cd %projectHome%/gbss-web/gbss-epos
git checkout %branchName%
@cd %projectHome%/gbss-web/gbss-eproduct
git checkout %branchName%
@cd %projectHome%/gbss-web/gbss-estore
git checkout %branchName%
@cd %projectHome%/gbss-web/gbss-web
git checkout %branchName%


:end
@cd %projectHome%
