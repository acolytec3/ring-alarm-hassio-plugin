ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache nodejs npm jq
COPY package.json .
RUN npm install 

# Copy data for add-on
COPY . .
RUN ls -l
RUN chmod a+x /mqttAlarm.sh

CMD [ "/mqttAlarm.sh" ]