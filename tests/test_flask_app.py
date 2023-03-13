from src.startup import create_app


def test_config():
    """Test create_app without passing test config."""
    assert not create_app().testing
    assert create_app({"TESTING": True}).testing


def test_hello_world(client):
    response = client.get('/hello')
    assert response.status_code == 200
    assert response.data.decode('utf-8') == "Hello, World!"
