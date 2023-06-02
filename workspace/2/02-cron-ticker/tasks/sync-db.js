let times = 0;

const syncDb = () => {
    times++;
    console.log('Tick cada múltiplo de ', times);
    return times;
}

module.exports = {
    syncDb
}