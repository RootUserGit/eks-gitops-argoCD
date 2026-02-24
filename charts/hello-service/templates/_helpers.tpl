{{/*
Common labels for hello-service chart
*/}}
{{- define "hello-service.labels" -}}
app.kubernetes.io/name: {{ include "hello-service.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Chart name
*/}}
{{- define "hello-service.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
