FROM public.ecr.aws/amazonlinux/amazonlinux:2
FROM public.ecr.aws/lambda/nodejs:14
ARG var_name="dev"
ENV ENV=${var_name}
COPY . .
RUN npm run build
CMD ["dist/src/handler/lambda.handler"]