<?php

namespace Tests\Feature;

use Illuminate\Support\Facades\DB;
use Tests\TestCase;

class ServerDeploymentTest extends TestCase
{
    /** Test HTTP health status */
    public function test_health_endpoint_returns_ok(): void
    {
        $response = $this->get('/up');
        $response->assertStatus(200);
    }

    /** Test in-memory test database execution */
    public function test_database_queries_work_in_test_environment(): void
    {
        $result = DB::select('SELECT 1 as is_connected');
        $this->assertEquals(1, $result[0]->is_connected);
    }
}
