const { syncDb } = require('../../tasks/sync-db');


describe('Pruebas en Sync-DB', () => {

    test('debe de ejecutar el proceso 2 veces', () => {
        
        syncDb();
        
        const times = syncDb();
        
        expect(times).toBe(2);
    });


});