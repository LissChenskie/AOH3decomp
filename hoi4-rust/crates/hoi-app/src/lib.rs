//! ironfront — библиотека приложения (FFI для Android + общий рендер для превью).
pub mod render;
#[cfg(target_os = "android")]
pub mod android;
