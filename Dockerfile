# n8n 公式イメージを土台にする（最も簡単）
FROM n8nio/n8n:latest

# ffmpeg を追加
USER root
RUN apt-get update \
 && apt-get install -y --no-install-recommends ffmpeg \
 && rm -rf /var/lib/apt/lists/*

# n8n の実行ユーザーに戻す
USER node

# 公式イメージは CMD/EXPOSE 済み（5678）。特に追記不要。