{{/*
site24x7ClusterAgent labels
*/}}
{{- define "site24x7ClusterAgent.labels" -}}
{{ include "site24x7.labels" . }}
app.kubernetes.io/instance: site24x7-cluster-agent
app.kubernetes.io/component: agent
app.kubernetes.io/version: 1.0.0
{{- end }}

{{/*
site24x7ClusterAgent Name
*/}}
{{- define "site24x7ClusterAgent.name" -}}
{{ include "site24x7.fullname" . }}-cluster-agent
{{- end }}