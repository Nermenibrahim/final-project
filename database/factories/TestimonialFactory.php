<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Testimonial>
 */
class TestimonialFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->randomElement(['Jone Due', 'Nermeen', 'Nada']),

            'content' => fake()->text(),

            'published' => fake()->numberBetween(0, 1),

            'image' => basename(fake()->image(public_path('assets/images/testimonials'))),
        
        ];
    }
}
