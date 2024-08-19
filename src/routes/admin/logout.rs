use crate::session_state::TypedSession;
use crate::utils::see_other;
use actix_web::{post, Responder};
use actix_web_flash_messages::FlashMessage;

#[post("/logout")]
pub async fn log_out(session: TypedSession) -> Result<impl Responder, actix_web::Error> {
    session.log_out();
    FlashMessage::info("You have successfully logged out.").send();

    Ok(see_other("/login"))
}
