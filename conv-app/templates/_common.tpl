{{- define "env.template" }}
- name: {{ .env }}
  valueFrom:
    secretKeyRef:
      name: {{ .name }}-secret
      key: {{ .env }}
{{- end }}
---
{{- define "volumeMount.template" }}
- name: {{ .name }}
  mountPath: {{ .mountPath }}
{{- end }}
---
{{- define "volume.template" }}
- name: {{ .name }}
  persistentVolumeClaim:
    claimName: {{ .claimName }}
{{- end }}
---
{{- define "rabbitmqPorts.template" }}
- name: {{ .name }}
  containerPort: {{ .containerPort }}
  protocol: {{ .protocol }}
{{- end }}
