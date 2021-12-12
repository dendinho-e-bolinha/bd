from subprocess import Popen, PIPE
from typing import Tuple
from config import config

if 'createDb' not in config or 'populateDb' not in config:
    raise Exception('Invalid configuration')


def get_html_from_query(query: str) -> Tuple[bool, str] | None:
    commands = [
        f'.read {config["createDb"]}',
        f'.read {config["populateDb"]}',
        '.mode html',
        '.headers on',
        '.nullvalue null',
        query
    ]

    commands = '\n'.join(commands)
    with Popen(['sqlite3', '-ascii'], stdin=PIPE, stdout=PIPE, stderr=PIPE) as process:
        if process.stdin is None or process.stdout is None or process.stderr is None:
            return None

        process.stdin.write(bytes(f'{commands}\n', encoding='utf8'))
        process.stdin.close()

        out = process.stdout.read() or None
        err = process.stderr.read() or None

        def bytes_to_str(s: bytes) -> str:
            return str(s, encoding='utf8', errors='replace')

        if out is None and err is not None:
            return (False, bytes_to_str(err))

        elif out is not None and err is None:
            return (True, bytes_to_str(out))

        else:
            return None
