@echo off
cls
setlocal EnableDelayedExpansion
rem gitbook install
rem &^ ����������gitbook���ж����� ������&����,��^������
go run update_version.go
gitbook build &^
go run fix-data-revision.go &^
go run builder.go