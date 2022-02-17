{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | replace "_" "-" | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | replace "_" "-" | trimSuffix "-" -}}
{{- end -}}

{{- define "lunaclient_environment" -}}
- name: LUNACLIENT_REPO
  value: {{ .Values.lunaclient.repo }}
- name: LUNACLIENT_KNOWN_HOSTS
  value: {{ .Values.lunaclient.known_hosts }}
- name: LUNACLIENT_VIRTUALTOKEN00LABEL
  value: {{ .Values.lunaclient.VirtualToken.VirtualToken00Label }}
- name: LUNACLIENT_VIRTUALTOKEN00SN
  value: {{ .Values.lunaclient.VirtualToken.VirtualToken00SN }}
- name: LUNACLIENT_VIRTUALTOKEN00MEMBERS
  value: {{ .Values.lunaclient.VirtualToken.VirtualToken00Members }}
- name: LUNACLIENT_VIRTUALTOKENACTIVERECOVERY
  value: {{ .Values.lunaclient.VirtualToken.VirtualTokenActiveRecovery }}
- name: LUNACLIENT_SYNC
  value: {{ .Values.lunaclient.HASynchronize.sync }}
- name: LUNACLIENT_HALOGSTATUS
  value: {{ .Values.lunaclient.HAConfiguration.haLogStatus }}
- name: LUNACLIENT_RECONNATT
  value: {{ .Values.lunaclient.HAConfiguration.reconnAtt }}
- name: LUNACLIENT_HAONLY
  value: {{ .Values.lunaclient.HAConfiguration.HAOnly }}
- name: LUNACLIENT_HALOGPATH
  value: {{ .Values.lunaclient.HAConfiguration.haLogPath }}
- name: LUNACLIENT_LOGLEN
  value: {{ .Values.lunaclient.HAConfiguration.logLen }}
- name: LUNACLIENT_USER
  value: {{ .Values.lunaclient.conn.user }}
- name: LUNACLIENT_PWD
  value: {{ .Values.lunaclient.conn.pwd }}
- name: LUNACLIENT_IP
  value: {{ .Values.lunaclient.conn.ip }}
- name: LUNACLIENT_PAR
  value: {{ .Values.lunaclient.conn.par }}
- name: LUNACLIENT_LIBRARY_PATH
  value: {{ .Values.lunaclient.conn.library_path }}
- name: LUNACLIENT_LOGIN
  value: {{ .Values.lunaclient.conn.login }}
- name: LUNACLIENT_MKEK_LABEL
  value: {{ .Values.lunaclient.conn.mkek_label }}
- name: LUNACLIENT_MKEK_LENGTH
  value: {{ .Values.lunaclient.conn.mkek_lenght }}
- name: LUNACLIENT_HMAC_LABEL
  value: {{ .Values.lunaclient.conn.hmac_lable }}
- name: LUNACLIENT_SLOT_ID
  value: {{ .Values.lunaclient.conn.slot_id }}
- name: LUNACLIENT_TAR
  value: {{ .Values.lunaclient.conn.tar }}
- name: LUNACLIENT_UNTAR
  value: {{ .Values.lunaclient.conn.untar }}
{{- end -}}