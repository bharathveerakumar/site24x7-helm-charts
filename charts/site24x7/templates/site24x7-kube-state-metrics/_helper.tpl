{{/*
site24x7KubeStateMetrics Name
*/}}
{{- define "site24x7KubeStateMetrics.name" -}}
{{ include "site24x7.fullname" . }}-kube-state-metrics
{{- end }}

{{/*
site24x7KubeStateMetrics labels
*/}}
{{- define "site24x7KubeStateMetrics.labels" -}}
{{ include "site24x7.labels" . }}
app.kubernetes.io/instance: {{ include "site24x7KubeStateMetrics.name" . }}
app.kubernetes.io/component: exporter
app.kubernetes.io/version: 2.9.2
{{- end }}

{{/*
site24x7KubeStateMetrics securityContext
*/}}
{{- define "site24x7KubeStateMetrics.securityContext" }}
{{- include "site24x7.nonRootScc" . }}
runAsUser: {{ default 1001010001 .Values.site24x7KubeStateMetrics.runAsUser }}
{{- end }}