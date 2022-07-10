{{- define "django.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "django.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
{{- end }}

{{- define "django.container.name" -}}
{{- printf "%s-%s" .Release.Name "" | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "django.deployment.name" -}}
{{- printf "%s-%s" .Release.Name "deployment" | trunc 63 | trimSuffix "-" -}}
{{- end }}
