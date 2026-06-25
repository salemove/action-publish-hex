FROM public.ecr.aws/docker/library/elixir:1.16-otp-26-alpine

COPY . .

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
