{{/*
Default Template for Deployment. All Sub-Charts under this Chart can include the below template.
*/}}


{{/*
Default Template for Service. All Sub-Charts under this Chart can include the below template.
*/}}
{{- define "parent-chart.servicetemplate" }}
apiVersion: v1
kind: Service
metadata:
  name: {{ .Values.appName }}
spec:
  type: {{ .Values.service.type }}
  ports:
    - port: {{ .Values.service.port }}
      protocol: TCP
  selector:
    app: {{ .Values.appName }}
{{- end }}
