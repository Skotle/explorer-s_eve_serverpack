# Explorer's Eve 서버 팩

- 모드팩: Explorer's Eve 1.6.3
- Minecraft 1.19.4 / Forge 45.3.0 / 64비트 Java 17

## 실행

1. `https://aka.ms/MinecraftEULA`의 약관을 읽고 동의하는 경우 `eula.txt`의 `eula=false`를 `eula=true`로 변경합니다.
2. Windows에서 `start-server.bat`를 실행합니다. 현재 PC의 CurseForge Java 17을 자동으로 찾습니다.
3. 콘솔에 `Done`이 나타나면 같은 모드팩을 사용하는 클라이언트에서 접속합니다. 같은 PC에서는 `localhost`, 같은 공유기에서는 서버 PC의 내부 IP를 사용합니다.
4. 서버 종료는 콘솔에 `stop`을 입력합니다.

다른 PC로 옮길 때는 `server-pack` 폴더 전체를 복사하고 Java 17을 설치하세요. 자동 인식이 안 되면 `JAVA17_HOME` 환경 변수에 Java 17 설치 폴더를 지정하세요. Forge 라이브러리가 없으면 실행 스크립트가 포함된 설치 파일로 설치하므로 이때 인터넷 연결이 필요합니다.

## 설정

- 메모리: `user_jvm_args.txt`에서 최소 1GB, 최대 6GB로 설정했습니다. `-Xmx6G`를 수정하면 최대 메모리가 바뀝니다. 클라이언트도 같은 PC에서 실행한다면 여유 메모리를 확보하세요.
- 접속 포트: TCP 25565. 외부 접속이 필요하면 공유기 포트 전달과 Windows 방화벽 허용을 직접 설정하세요.
- 기본 설정: 서바이벌, 보통 난이도, 최대 10명, 시야 8청크, 시뮬레이션 6청크. `server.properties`에서 변경할 수 있습니다.
- 계정 인증은 `online-mode=true`입니다.
- 새 월드는 `world` 폴더에 생성됩니다. 기존 싱글플레이 월드는 복사하지 않았습니다.
- Linux에서는 Java 17을 설치한 후 `sh run.sh nogui`로 실행할 수 있습니다.

## 포함 구성

게임 콘텐츠 모드와 서버에서도 기능이 있는 JEI를 포함했습니다. Aether 및 Wither Storm에 내장된 Curios와 CrackersLib 등의 의존성은 Forge가 자동으로 불러옵니다.

`config`, `defaultconfigs`, `patchouli_books`를 복사했습니다. 특히 `config/openloader/data`의 모드팩 전용 레시피·전리품·발전 과제·월드 데이터가 유지됩니다. 클라이언트의 리소스팩은 기존 CurseForge 팩에서 그대로 사용하세요.

서버 복사본에서 제외한 모드:

- Better FPS Render Distance: 클라이언트 렌더 거리 조정
- Shut Up Experimental Settings: 클라이언트 경고 화면 처리
- Xaero's Minimap: 클라이언트 지도
- Xaero's World Map: 클라이언트 지도

원본 CurseForge 인스턴스의 모드, 설정 및 저장 데이터는 수정하지 않았습니다.

## 안내서 한국어 번역

`patchouli_books/explorers_eve/ko_kr`에 안내서의 분류 4개와 항목 30개의 한국어 번역이 들어 있습니다. 영어 원문과 조합법, 아이템 ID, 발전 과제 조건, 클릭 명령은 유지했습니다. 공통 설정인 `book.json`의 책 제목과 첫 화면 소개는 영어로 유지됩니다.

안내서는 클라이언트에서 표시되므로 서버에 있는 번역 파일만으로는 접속자의 화면에 적용되지 않습니다. 각 클라이언트의 게임 폴더 안 `patchouli_books/explorers_eve`에 `ko_kr` 폴더를 복사하고, 게임 언어를 한국어로 선택한 뒤 게임을 다시 실행하세요.

## 검증 결과

Forge 서버 설치가 성공했으며 Java 17로 서버 초기 구동을 확인했습니다. 모드 탐색과 내장 의존성 6개 인식 후 EULA 동의 대기 단계에서 정상 종료했습니다. EULA 동의 전이므로 월드 생성 및 실제 클라이언트 접속은 아직 검증하지 않았습니다. 결과는 `validation-startup.log`, 설치 기록은 `forge-install.log`에 있습니다. 실행 스크립트의 Java 자동 탐색과 EULA 안내도 확인했습니다.

`mods-inventory.csv`에는 포함된 모드 파일과 SHA-256 해시 및 출처가 기록되어 있습니다.

## 출처

- Forge: https://files.minecraftforge.net/net/minecraftforge/forge/index_1.19.4.html
- Better FPS 설명: https://www.curseforge.com/minecraft/mc-mods/better-fps-render-distance
