use dotenv::dotenv;
use messages_actix::MessageApp;

fn main() -> std::io::Result<()> {
    dotenv().ok();
    env_logger::init();
    let app = MessageApp::new(8080);
    app.run()
}
