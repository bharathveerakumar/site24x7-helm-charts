{{- define "site24x7.nonRootScc" }}
capabilities:
  drop:
    - ALL
seccompProfile:
  type: RuntimeDefault
allowPrivilegeEscalation: false
readOnlyRootFilesystem: true
runAsNonRoot: true
runAsUser: 1001010001
{{- end }}

{{- define "site24x7.rootScc" }}
runAsUser: 0
readOnlyRootFilesystem: false
{{- end }}

{{- define "site24x7Agent.securityContext" }}
{{- if .Values.site24x7Agent.applyNonRootSecurityContext }}
{{- include "site24x7.nonRootScc" . }}
{{- else }}
{{- include "site24x7.rootScc" . }}
{{- end }}
{{- end }}