use dotenv::dotenv;
use messages_actix::MessageApp;
use std::env;

fn main() -> std::io::Result<()> {
    dotenv().ok();
    env_logger::init();
    let port = env::args().nth(1)
        .and_then(|s| s.parse::<u16>().ok())
        .unwrap_or(8080);
    let app = MessageApp::new(port);
    app.run()
}
