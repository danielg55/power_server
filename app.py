from quart import Quart

app = Quart(__name__)

@app.route('/')
async def index():
    app.logger.info('index')
    return 'Hello world!'

