import logging

from src.main import main


def test_main(caplog):
    caplog.set_level(logging.INFO)
    main()
    assert caplog.records[0].msg == 'It works!'
