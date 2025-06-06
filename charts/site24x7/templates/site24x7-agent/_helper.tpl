{{/*
site24x7Agent Name
*/}}
{{- define "site24x7Agent.name" -}}
{{- include "site24x7.fullname" . }}-agent
{{- end }}

{{/*
site24x7Agent securityContext
*/}}
{{- define "site24x7Agent.securityContext" }}
{{- if .Values.site24x7Agent.applyNonRootSecurityContext }}
{{- include "site24x7.nonRootScc" . }}
{{- else }}
{{- include "site24x7.rootScc" . }}
{{- end }}
{{- end }}

{{/*
site24x7Agent labels
*/}}
{{- define "site24x7Agent.labels" -}}
{{ include "site24x7.labels" . }}
app.kubernetes.io/instance: {{ include "site24x7Agent.name" . }}
app.kubernetes.io/component: agent
app.kubernetes.io/version: 20.0.0
{{- end }}


{{/*
site24x7Agent priorityClassName
*/}}
{{- define "site24x7Agent.priorityClassName" -}}
{{- if .Values.site24x7Agent. }}
{{- end }}