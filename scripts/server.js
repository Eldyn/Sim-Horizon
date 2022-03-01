var _a, _b, _c, _d, _e, _f;
import { execCmd, World } from "./mc.js";
let data = {
    events: {
        beforePlayerJoin: {},
        playerJoin: {},
        playerLeave: {},
        beforeChat: {},
        chat: {},
        tick: {}
    },
    intervals: {},
    timeouts: {},
    eventQueues: {
        playerJoin: {}
    },
    prevtime: Date.now()
};
class triggerEvents {
}
triggerEvents.beforePlayerJoin = (v) => {
    let { player: p } = v;
    p.orgName = p.nameTag;
    data.eventQueues.playerJoin[p.orgName] = p;
    Object.entries(data.events.beforePlayerJoin).sort((a, b) => b[1][1] - a[1][1]).forEach(([n, [f]]) => {
        try {
            f(v);
        }
        catch (e) {
            if (e instanceof Error)
                console.warn(`Error in server > events > beforePlayerJoin (${n}):  ${e}\n${e.stack}`);
            else
                console.warn(`server > events > beforePlayerJoin (${n}):  ${e}`);
        }
    });
};
triggerEvents.playerJoin = (v) => {
    Object.entries(data.events.playerJoin).sort((a, b) => b[1][1] - a[1][1]).forEach(([n, [f]]) => {
        try {
            f(v);
        }
        catch (e) {
            if (e instanceof Error)
                console.warn(`Error in server > events > playerJoin (${n}):  ${e}\n${e.stack}`);
            else
                console.warn(`server > events > playerJoin (${n}):  ${e}`);
        }
    });
};
triggerEvents.playerLeave = (v) => {
    Object.entries(data.events.playerLeave).sort((a, b) => b[1][1] - a[1][1]).forEach(([n, [f]]) => {
        try {
            f(v);
        }
        catch (e) {
            if (e instanceof Error)
                console.warn(`Error in server > events > playerLeave (${n}):  ${e}\n${e.stack}`);
            else
                console.warn(`erver > events > playerLeave (${n}):  ${e}`);
        }
    });
};
triggerEvents.beforeChat = (v) => {
    Object.entries(data.events.beforeChat).sort((a, b) => b[1][1] - a[1][1]).forEach(([n, [f]]) => {
        try {
            f(v);
        }
        catch (e) {
            if (e instanceof Error)
                console.warn(`Error in server > events > beforeChat (${n}):  ${e}\n${e.stack}`);
            else
                console.warn(`server > events > beforeChat (${n}):  ${e}`);
        }
    });
};
triggerEvents.chat = (v) => {
    Object.entries(data.events.chat).sort((a, b) => b[1][1] - a[1][1]).forEach(([n, [f]]) => {
        try {
            f(v);
        }
        catch (e) {
            if (e instanceof Error)
                console.warn(`Error in server > events > chat (${n}):  ${e}\n${e.stack}`);
            else
                console.warn(`server > events > chat (${n}):  ${e}`);
        }
    });
};
triggerEvents.tick = (v) => {
    Object.entries(data.eventQueues.playerJoin).forEach(([p, v]) => {
        try {
            v.getComponent('');
        }
        catch {
            delete data.eventQueues.playerJoin[p];
            return;
        }
        try {
            execCmd(`testfor "${v.nameTag}"`);
            triggerEvents.playerJoin(v);
            delete data.eventQueues.playerJoin[p];
            return;
        }
        catch { }
    });
    Object.entries(data.events.tick).sort((a, b) => b[1][1] - a[1][1]).forEach(([n, [f]]) => {
        try {
            f(v);
        }
        catch (e) {
            if (e instanceof Error)
                console.warn(`Error in server > events > tick (${n}):  ${e}\n${e.stack}`);
            else
                console.warn(`server > events > tick (${n}):  ${e}`);
        }
    });
    let curtime = Date.now();
    Object.entries(data.intervals).forEach(([p, v]) => {
        v.c -= (curtime - data.prevtime);
        let r = v.maxCallsPerTick;
        while (r > 0 && v.c <= v.tol) {
            curtime = Date.now();
            try {
                v.f(curtime - v.prevTick);
            }
            catch (e) {
                if (e instanceof Error)
                    console.warn(`Error in server > interval (${p}):  ${e}\n${e.stack}`);
                else
                    console.warn(`server > interval (${p}):  ${e}`);
            }
            v.prevTick = curtime;
            v.c += v.ms;
            r--;
        }
        if (r == 0 && v.c <= v.tol)
            v.c += Math.ceil((v.tol - v.c) / v.ms) * v.ms;
    });
    curtime = Date.now();
    Object.entries(data.timeouts).forEach(([p, v]) => {
        v.c -= (curtime - data.prevtime);
        if (v.c <= v.tol) {
            curtime = Date.now();
            try {
                v.f(curtime - v.prevTick);
            }
            catch (e) {
                if (e instanceof Error)
                    console.warn(`Error in server > timeout (${p}):  ${e}\n${e.stack}`);
                else
                    console.warn(`server > timeout (${p}):  ${e}`);
            }
            delete data.timeouts[p];
        }
    });
    data.prevtime = curtime;
};
class events {
}
events.beforePlayerJoin = (_a = class {
    },
    _a.subscribe = (id, fn, priority = 0) => {
        data.events['beforePlayerJoin'][id] = [fn, priority];
    },
    _a.unsubscribe = (id) => {
        let v = id in data.events['beforePlayerJoin'];
        delete data.events['beforePlayerJoin'][id];
        return v;
    },
    _a);
events.playerJoin = (_b = class {
    },
    _b.subscribe = (id, fn, priority = 0) => {
        data.events['playerJoin'][id] = [fn, priority];
    },
    _b.unsubscribe = (id) => {
        let v = id in data.events['playerJoin'];
        delete data.events['playerJoin'][id];
        return v;
    },
    _b);
events.playerLeave = (_c = class {
    },
    _c.subscribe = (id, fn, priority = 0) => {
        data.events['playerLeave'][id] = [fn, priority];
    },
    _c.unsubscribe = (id) => {
        let v = id in data.events['playerLeave'];
        delete data.events['playerLeave'][id];
        return v;
    },
    _c);
events.beforeChat = (_d = class {
    },
    _d.subscribe = (id, fn, priority = 0) => {
        data.events['beforeChat'][id] = [fn, priority];
    },
    _d.unsubscribe = (id) => {
        let v = id in data.events['beforeChat'];
        delete data.events['beforeChat'][id];
        return v;
    },
    _d);
events.chat = (_e = class {
    },
    _e.subscribe = (id, fn, priority = 0) => {
        data.events['chat'][id] = [fn, priority];
    },
    _e.unsubscribe = (id) => {
        let v = id in data.events['chat'];
        delete data.events['chat'][id];
        return v;
    },
    _e);
events.tick = (_f = class {
    },
    _f.subscribe = (id, fn, priority = 0) => {
        data.events['tick'][id] = [fn, priority];
    },
    _f.unsubscribe = (id) => {
        let v = id in data.events['tick'];
        delete data.events['tick'][id];
        return v;
    },
    _f);
class server {
    static get data() { return data; }
}
server.events = events;
server.ev = events;
server.triggerEvent = triggerEvents;
server.setInterval = (id, fn, ms, tol = 2, maxCallsPerTick = 1) => {
    return data.intervals[id] = {
        id,
        ms,
        c: ms,
        tol,
        f: fn,
        prevTick: Date.now(),
        maxCallsPerTick: maxCallsPerTick
    };
};
server.clearInterval = (id) => {
    let tid = (typeof id == 'string' ? id : id.id);
    let v = tid in data.intervals;
    delete data.intervals[tid];
    return v;
};
server.setTimeout = (id, fn, ms, tol = 2) => {
    return data.timeouts[id] = {
        id,
        ms,
        c: ms,
        tol,
        f: fn,
        prevTick: Date.now()
    };
};
server.clearTimeout = (id) => {
    let tid = (typeof id == 'string' ? id : id.id);
    let v = tid in data.timeouts;
    delete data.timeouts[tid];
    return v;
};
server.start = () => {
    let ev = World.events;
    ev.playerJoin.subscribe(triggerEvents.beforePlayerJoin);
    ev.playerLeave.subscribe(triggerEvents.playerLeave);
    ev.beforeChat.subscribe(triggerEvents.beforeChat);
    ev.chat.subscribe(triggerEvents.chat);
    ev.tick.subscribe(triggerEvents.tick);
};
server.getPlayers = () => [...World.getPlayers()];
export default server;