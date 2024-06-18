# Используем базовый образ Python 3.12
FROM python:3.12

# Устанавливаем переменную окружения PYTHONUNBUFFERED для запуска в неинтерактивном режиме
ENV PYTHONUNBUFFERED 1

# Создаем директорию приложения внутри контейнера и делаем ее рабочей директорией
RUN mkdir /code
WORKDIR /code

# Копируем зависимости файла requirements.txt и устанавливаем их
COPY requirements.txt /code/
RUN pip install -r requirements.txt

# Копируем все содержимое текущей директории внутрь контейнера в директорию /code/
COPY taskmanager /code/

# Запускаем команду для сборки статических файлов (если они нужны)
# RUN python manage.py collectstatic --noinput

# Определяем команду для запуска сервера Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
