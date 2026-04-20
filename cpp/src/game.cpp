#include "game.hpp"
#include <SDL.h>

extern SDL_Renderer* renderer;

Game::Game() {}

Game::~Game() {}

void Game::update() {
    // Update game state
}

void Game::render() {
    SDL_SetRenderDrawColor(renderer, 200, 40, 40, 255);
    SDL_Rect rect = { 100, 100, 200, 150 };
    SDL_RenderFillRect(renderer, &rect);
}
