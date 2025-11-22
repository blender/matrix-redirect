# SPDX-FileCopyrightText: 2025 Suguru Hirahara
#
# SPDX-License-Identifier: Apache-2.0

FROM node:25

WORKDIR /app

COPY yarn.lock package.json ./

COPY . .

RUN yarn

EXPOSE 5000

USER 1000  # node

CMD ["yarn", "start"]
