from onecodex import version


def test_correct_version_exposed():
    assert version.VERSION == "0.0.9"
    assert version.API_VERSION == "v0"
