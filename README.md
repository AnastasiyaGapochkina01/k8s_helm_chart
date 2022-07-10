# k8s_helm_chart
Пример helm чарта для django с ArgoCD 

С помощью generators list запускаются 2 джанги: django-1 и django-2 с переопределенными env:
- type
- prefix

!!! ВАЖНО !!! Чтобы ArgoCD перетирал значения, они должны быть в values.yaml и обращаться к ним надо как в go-tempate
